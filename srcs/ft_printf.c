/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tdharmar <tdharmar@student.42bangkok.co    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/06/21 13:10:07 by tdharmar          #+#    #+#             */
/*   Updated: 2025/06/21 13:10:07 by tdharmar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_printf(const char *str, ...)
{
	va_list	args;
	size_t	i;
	int		print_cnt;

	va_start(args, str);
	print_cnt = 0;
	i = 0;
	while (str[i])
	{
		if (str[i] == '%')
		{
			i++;
			print_cnt += ft_print_from_format(str[i], args);
		}
		else
		{
			ft_putchar_fd(str[i], 1);
			print_cnt ++;
		}
		i++;
	}
	va_end(args);
	return (print_cnt);
}
