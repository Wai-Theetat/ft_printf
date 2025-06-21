/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_string.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tdharmar <tdharmar@student.42bangkok.co    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/06/21 14:59:50 by tdharmar          #+#    #+#             */
/*   Updated: 2025/06/21 14:59:50 by tdharmar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_print_str(char *str)
{
	int	cnt;

	cnt = 0;
	if (str == NULL)
		return (ft_print_str("(null)"));
	while (str[cnt])
	{
		write(1, &str[cnt], 1);
		cnt++;
	}
	return (cnt);
}